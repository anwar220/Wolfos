# classes.dex

.class public abstract Landroid/hardware/biometrics/BiometricStateListener;
.super Landroid/hardware/biometrics/IBiometricStateListener$Stub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricStateListener$State;
    }
.end annotation


# static fields
.field public static final STATE_AUTH_OTHER:I = 0x4

.field public static final STATE_BP_AUTH:I = 0x3

.field public static final STATE_ENROLLING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_KEYGUARD_AUTH:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentsChanged(IIZ)V
    .registers 4

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method
