//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 16..
//

import SwiftHtml
//import FeatherIcons

struct BlogAdminWidgetTemplate: TemplateRepresentable {
    
    @TagBuilder
    func render(_ req: Request) -> Tag {
//        Svg.edit
        H2("Blog")
        Ul {
            if req.checkPermission(Blog.Post.permission(for: .list)) {
                Li {
                    A("Posts")
                        .href("/admin/blog/posts/")
                }
            }
            if req.checkPermission(Blog.Category.permission(for: .list)) {
                Li {
                    A("Categories")
                        .href("/admin/blog/categories/")
                }
            }
            if req.checkPermission(Blog.Author.permission(for: .list)) {
                Li {
                    A("Authors")
                        .href("/admin/blog/authors/")
                }
            }
        }
    }
}
