# classes2.dex

.class public Landroid/opengl/EGLExt;
.super Ljava/lang/Object;


# static fields
.field public static final EGL_CONTEXT_FLAGS_KHR:I = 0x30fc

.field public static final EGL_CONTEXT_MAJOR_VERSION_KHR:I = 0x3098

.field public static final EGL_CONTEXT_MINOR_VERSION_KHR:I = 0x30fb

.field public static final EGL_NO_NATIVE_FENCE_FD_ANDROID:I = -0x1

.field public static final EGL_OPENGL_ES3_BIT_KHR:I = 0x40

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final EGL_SYNC_NATIVE_FENCE_ANDROID:I = 0x3144

.field public static final EGL_SYNC_NATIVE_FENCE_FD_ANDROID:I = 0x3145

.field public static final EGL_SYNC_NATIVE_FENCE_SIGNALED_ANDROID:I = 0x3146


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Landroid/opengl/EGLExt;->_nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _nativeClassInit()V
.end method

.method public static eglDupNativeFenceFDANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Landroid/hardware/SyncFence;
    .registers 5

    invoke-static {p0, p1}, Landroid/opengl/EGLExt;->eglDupNativeFenceFDANDROIDImpl(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglDupNativeFence returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EGL"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_27

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1

    :cond_27
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1
.end method

.method private static native eglDupNativeFenceFDANDROIDImpl(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)I
.end method

.method public static native eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z
.end method
