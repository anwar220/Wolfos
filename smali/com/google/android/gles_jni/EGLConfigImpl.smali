# classes4.dex

.class public Lcom/google/android/gles_jni/EGLConfigImpl;
.super Ljavax/microedition/khronos/egl/EGLConfig;


# instance fields
.field private mEGLConfig:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLConfig;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    return-void
.end method


# virtual methods
.method get()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    return-wide v0
.end method
