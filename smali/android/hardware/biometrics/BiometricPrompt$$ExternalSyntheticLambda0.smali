# classes.dex

.class public final synthetic Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt;

.field public final synthetic f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$0$android-hardware-biometrics-BiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method
