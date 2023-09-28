# classes3.dex

.class public final Landroid/service/autofill/augmented/FillWindow;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mDestroyed:Z

.field private mFillView:Landroid/view/View;

.field private final mLock:Ljava/lang/Object;

.field private mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

.field private mShowing:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private mUpdateCalled:Z

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleHide(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->handleHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShow(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/FillWindow;->handleShow(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkNotDestroyedLocked()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleHide()V
    .registers 5

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleHide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_2d

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v2, :cond_2d

    iget-boolean v3, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_2f

    if-eqz v3, :cond_2d

    :try_start_1a
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_20} :catch_21
    .catchall {:try_start_1a .. :try_end_20} :catchall_2f

    goto :goto_2d

    :catch_21
    move-exception v1

    :try_start_22
    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_2d

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Exception hiding window."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private handleShow(Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleShow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_66

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_68

    if-eqz v1, :cond_66

    :try_start_16
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    goto :goto_66

    :cond_2c
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_33
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_16 .. :try_end_33} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_33} :catch_34
    .catchall {:try_start_16 .. :try_end_33} :catchall_68

    goto :goto_66

    :catch_34
    move-exception v1

    :try_start_35
    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_66

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Exception showing window."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :catch_41
    move-exception v1

    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_66

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filed with token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    monitor-exit v0

    return-void

    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_35 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method private hide()V
    .registers 5

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    if-eqz v1, :cond_2d

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_38

    if-eqz v2, :cond_2d

    :try_start_21
    invoke-virtual {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestHideFillUi()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_38

    goto :goto_2d

    :catch_25
    move-exception v1

    :try_start_26
    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Error requesting to hide fill window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "update() not called yet, or already destroyed()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_38

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    return-void
.end method

.method public destroy()V
    .registers 4

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_36

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(): mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFillView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_39
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    if-eqz v1, :cond_3f

    monitor-exit v0

    return-void

    :cond_3f
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->hide()V

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    :cond_52
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    monitor-exit v0

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "updateCalled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v0, :cond_5e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fill window: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "shown"

    goto :goto_32

    :cond_30
    const-string v0, "hidden"

    :goto_32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fill view: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBounds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWm: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5e
    monitor-exit p0

    return-void

    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_60

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method synthetic lambda$update$0$android-service-autofill-augmented-FillWindow(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz v0, :cond_12

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "Outside touch detected, hiding the window"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->hide()V

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method show()V
    .registers 7

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_53

    if-eqz v1, :cond_48

    :try_start_1e
    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    new-instance v5, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;

    invoke-direct {v5, p0}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestShowFillUi(IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_39} :catch_3a
    .catchall {:try_start_1e .. :try_end_39} :catchall_53

    goto :goto_42

    :catch_3a
    move-exception v1

    :try_start_3b
    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Error requesting to show fill window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    :cond_48
    monitor-exit v0

    return-void

    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "update() not called yet, or already destroyed()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_53

    throw v1
.end method

.method public update(Landroid/service/autofill/augmented/PresentationParams$Area;Landroid/view/View;J)Z
    .registers 12

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_26

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getSmartSuggestionParams()Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_42

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "No SmartSuggestionParams"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_42
    invoke-virtual {p1}, Landroid/service/autofill/augmented/PresentationParams$Area;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_50

    sget-object v3, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v4, "No Rect on SmartSuggestionParams"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_50
    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_53
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    iget-object v4, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iput-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iput-object p2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    new-instance v4, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/service/autofill/augmented/PresentationParams$Area;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    sget-boolean v4, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v4, :cond_a5

    sget-object v4, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created FillWindow: params= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v1, p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->setFillWindow(Landroid/service/autofill/augmented/FillWindow;)V

    monitor-exit v3

    return v4

    :catchall_b1
    move-exception v1

    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_53 .. :try_end_b3} :catchall_b1

    throw v1
.end method
