# classes.dex

.class Landroid/app/ActivityThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandled:Z

.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$decorView:Lcom/android/internal/policy/DecorView;

.field final synthetic val$r:Landroid/app/ActivityThread$ActivityClientRecord;

.field final synthetic val$startingWindowLeash:Landroid/view/SurfaceControl;

.field final synthetic val$view:Landroid/window/SplashScreenView;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V
    .registers 6

    iput-object p1, p0, Landroid/app/ActivityThread$1;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$1;->val$view:Landroid/window/SplashScreenView;

    iput-object p3, p0, Landroid/app/ActivityThread$1;->val$r:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object p4, p0, Landroid/app/ActivityThread$1;->val$decorView:Lcom/android/internal/policy/DecorView;

    iput-object p5, p0, Landroid/app/ActivityThread$1;->val$startingWindowLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/app/ActivityThread$1;->mHandled:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$0$android-app-ActivityThread$1(Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .registers 6

    iget-boolean v0, p0, Landroid/app/ActivityThread$1;->mHandled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$1;->mHandled:Z

    iget-object v0, p0, Landroid/app/ActivityThread$1;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$1;->val$view:Landroid/window/SplashScreenView;

    iget-object v2, p0, Landroid/app/ActivityThread$1;->val$r:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/ActivityThread$1;->val$decorView:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Landroid/app/ActivityThread$1;->val$startingWindowLeash:Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread;->-$$Nest$msyncTransferSplashscreenViewTransaction(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Landroid/app/ActivityThread$1;->val$view:Landroid/window/SplashScreenView;

    new-instance v1, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread$1;Landroid/window/SplashScreenView;)V

    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
