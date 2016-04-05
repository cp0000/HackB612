
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#include <OpenGLES/ES2/gl.h>
#include <OpenGLES/ES2/glext.h>

@interface OpenGLView : UIView {
    CAEAGLLayer* _eaglLayer;
    EAGLContext* _context;
    GLuint _colorRenderBuffer;
    GLuint _positionSlot;
    GLuint _colorSlot;

    
    GLuint _photoTexture;
    GLuint _filterTexture;

    GLuint _texCoordSlot;
    GLuint _texCoordSlot2;
    
    GLuint _textureUniform;
    GLuint _textureUniform2;

    GLuint _vertexBuffer;
    GLuint _indexBuffer;

    GLint backingWidth;
    GLint backingHeight;
}

@end
