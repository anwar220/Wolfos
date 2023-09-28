# classes4.dex

.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;


# instance fields
.field private mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .registers 2

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    :try_start_7
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    :cond_f
    :goto_f
    return-void
.end method

.method public dispatchEnterDragArea(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 3

    return-void
.end method

.method public dispatchGetNewSurface()V
    .registers 1

    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 10

    if-eqz p6, :cond_e

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :cond_e
    :goto_e
    return-void
.end method

.method public dispatchWallpaperOffsets(FFFFFZ)V
    .registers 9

    if-eqz p6, :cond_d

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :cond_d
    :goto_d
    return-void
.end method

.method public dispatchWindowShown()V
    .registers 1

    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 6

    if-eqz p3, :cond_1a

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-exception v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public hideInsets(IZ)V
    .registers 3

    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3

    return-void
.end method

.method public moved(II)V
    .registers 3

    return-void
.end method

.method public notifyCastMode(Z)V
    .registers 2

    return-void
.end method

.method public notifyProjectionMode(Z)V
    .registers 2

    return-void
.end method

.method public notifyRotationChanged(Z)V
    .registers 2

    return-void
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 3

    return-void
.end method

.method public requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    const-string v1, "Not Implemented"

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    return-void
.end method

.method public resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .registers 12

    if-eqz p2, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p8}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    :cond_a
    :goto_a
    return-void
.end method

.method public setSession(Landroid/view/IWindowSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    return-void
.end method

.method public showInsets(IZ)V
    .registers 3

    return-void
.end method

.method public updatePointerIcon(FF)V
    .registers 5

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return-void
.end method
