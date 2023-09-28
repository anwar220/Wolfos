# classes4.dex

.class public Landroid/window/BackNavigationInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackNavigationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

.field private mScreenshotSurface:Landroid/view/SurfaceControl;

.field private mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public build()Landroid/window/BackNavigationInfo;
    .registers 10

    new-instance v8, Landroid/window/BackNavigationInfo;

    iget v1, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    iget-object v2, p0, Landroid/window/BackNavigationInfo$Builder;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    iget-object v5, p0, Landroid/window/BackNavigationInfo$Builder;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iget-object v7, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/window/BackNavigationInfo;-><init>(ILandroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/app/WindowConfiguration;Landroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;)V

    return-object v8
.end method

.method public setDepartingAnimationTarget(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object p0
.end method

.method public setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method public setScreenshotBuffer(Landroid/hardware/HardwareBuffer;)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public setScreenshotSurface(Landroid/view/SurfaceControl;)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setTaskWindowConfiguration(Landroid/app/WindowConfiguration;)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    return-object p0
.end method

.method public setType(I)Landroid/window/BackNavigationInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    return-object p0
.end method
