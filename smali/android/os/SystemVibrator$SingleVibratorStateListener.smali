# classes3.dex

.class Landroid/os/SystemVibrator$SingleVibratorStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Vibrator$OnVibratorStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleVibratorStateListener"
.end annotation


# instance fields
.field private final mAllVibratorsListener:Landroid/os/SystemVibrator$AllVibratorsStateListener;

.field private final mVibratorIdx:I


# direct methods
.method constructor <init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mAllVibratorsListener:Landroid/os/SystemVibrator$AllVibratorsStateListener;

    iput p2, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mVibratorIdx:I

    return-void
.end method


# virtual methods
.method public onVibratorStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mAllVibratorsListener:Landroid/os/SystemVibrator$AllVibratorsStateListener;

    iget v1, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mVibratorIdx:I

    invoke-virtual {v0, v1, p1}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->onVibrating(IZ)V

    return-void
.end method
