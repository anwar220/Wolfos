# classes3.dex

.class public final synthetic Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/SystemVibrator$AllVibratorsStateListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;->f$0:Landroid/os/SystemVibrator$AllVibratorsStateListener;

    iput p2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;->f$0:Landroid/os/SystemVibrator$AllVibratorsStateListener;

    iget v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->lambda$onVibrating$0$android-os-SystemVibrator$AllVibratorsStateListener(IZ)V

    return-void
.end method
