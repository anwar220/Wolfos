# classes.dex

.class public final synthetic Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricManager;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricManager;

    return-void
.end method


# virtual methods
.method public final createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricManager;->lambda$createTestSession$0$android-hardware-biometrics-BiometricManager(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p1

    return-object p1
.end method
