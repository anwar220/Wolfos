# classes4.dex

.class public abstract Landroid/window/WindowInfosListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowInfosListener$DisplayInfo;
    }
.end annotation


# instance fields
.field private final mNativeListener:J


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/window/WindowInfosListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/window/WindowInfosListener;->nativeGetFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    invoke-static {p0}, Landroid/window/WindowInfosListener;->nativeCreate(Landroid/window/WindowInfosListener;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/window/WindowInfosListener;->mNativeListener:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private static native nativeCreate(Landroid/window/WindowInfosListener;)J
.end method

.method private static native nativeGetFinalizer()J
.end method

.method private static native nativeRegister(J)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "[",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeUnregister(J)V
.end method


# virtual methods
.method public abstract onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
.end method

.method public register()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Landroid/window/WindowInfosListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/window/WindowInfosListener;->nativeRegister(J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public unregister()V
    .registers 3

    iget-wide v0, p0, Landroid/window/WindowInfosListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/window/WindowInfosListener;->nativeUnregister(J)V

    return-void
.end method
