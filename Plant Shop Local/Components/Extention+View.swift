//
//  MapSheet.swift
//  Plant Shop Local
//
//  Created by Benji Loya on 14/12/2022.
//

import SwiftUI

extension View {
    //    MARK: Custom View Modififier
    func blurredSheet<Content: View>(_ style: AnyShapeStyle,show: Binding<Bool>,onDismiss:
                                     @escaping ()->(),@ViewBuilder content: @escaping ()->Content)->some View {
        self
            .sheet(isPresented: show, onDismiss: onDismiss) {
                content()
                    .background(RemovebackgroundColor())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background {
                        Rectangle()
                            .fill(style)
                            .ignoresSafeArea(.container, edges: .all)
                    }
            }
    }
}

//MARK: Helper View

fileprivate struct RemovebackgroundColor: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return UIView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.async {
            uiView.superview?.superview?.backgroundColor = .clear
        }
    }
}

extension View {
    //    MARK: Custom View Modififier
    func blurredFullScreenCover<Content: View>(_ style: AnyShapeStyle,show: Binding<Bool>,onDismiss:
                                     @escaping ()->(),@ViewBuilder content: @escaping ()->Content)->some View {
        self
            .fullScreenCover(isPresented: show, onDismiss: onDismiss) {
                content()
                    .background(RemovebackgroundColor1())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background {
                        Rectangle()
                            .fill(style)
                            .ignoresSafeArea(.container, edges: .all)
                    }
            }
    }
}

//MARK: Helper View

fileprivate struct RemovebackgroundColor1: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return UIView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.async {
            uiView.superview?.superview?.backgroundColor = .clear
        }
    }
}
