# classes4.dex

.class public final synthetic Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/SplashScreenView$Builder;

.field public final synthetic f$1:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SplashScreenView$Builder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;->f$0:Landroid/window/SplashScreenView$Builder;

    iput-object p2, p0, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;->f$0:Landroid/window/SplashScreenView$Builder;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView$Builder;->lambda$build$0$android-window-SplashScreenView$Builder(Landroid/window/SplashScreenView;)V

    return-void
.end method
