//
//  servicio_camara.swift
//  juego_ra
//
//  Created by alumno on 11/12/25.
//
import Foundation
import AVFoundation
import UIKit

@Observable
class ServicioCamara{
 
    private let sesion = AVCaptureSession()

    private var entrada_del_dispositivo: AVCaptureDeviceInput?
    private var salida_de_video: AVCaptureVideoDataOutput?
    private let camara_Preferida = AVCaptureDevice.default(for: .video)
    private var lista_de_sesion = DispatchQueue(label: "sesion.video")
    
    private var previsualizacion: AVCaptureVideoPreviewLayer?
    
    
    func autorizacion_camara() async -> Bool{
        let estado_autorizacion = AVCaptureDevice.authorizationStatus(for: .video)
        
        if estado_autorizacion == .notDetermined{
            await AVCaptureDevice.requestAccess(for: .video)
        }
        return estado_autorizacion == .authorized
    }
    
    func iniciar(){
        guard let dispositivo = AVCaptureDevice.default(for: .video),
                let entrada = try? AVCaptureDeviceInput(device: dispositivo),
              sesion.canAddInput(entrada)
            //  sesion.canAddOutput()
        else{
            return
        }
        
        sesion.beginConfiguration()
        sesion.addInput(entrada)
        //sesion.addOutput(<#T##output: AVCaptureOutput##AVCaptureOutput#>)
        sesion.commitConfiguration()
        sesion.startRunning()
    }
    
    func detener(){
        sesion.stopRunning()
        sesion.beginConfiguration()
        sesion.inputs.forEach{sesion.removeInput($0)}
        sesion.outputs.forEach{sesion.removeOutput($0)}
        sesion.commitConfiguration()
        previsualizacion = nil
    }
    
    func obtener_previsualizacion_camara() -> AVCaptureVideoPreviewLayer{
        if let capa = previsualizacion{
            return capa
        }
        let capa = AVCaptureVideoPreviewLayer(sesion: sesion)
        capa.videoGravity = .resizeAspectFill
        previsualizacion = capa
        return capa
    }
}
