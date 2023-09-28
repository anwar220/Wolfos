# classes.dex

.class Landroid/hardware/biometrics/BiometricPrompt$1;
.super Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAcquired$3$android-hardware-biometrics-BiometricPrompt$1(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onAuthenticationFailed$1$android-hardware-biometrics-BiometricPrompt$1()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method synthetic lambda$onAuthenticationSucceeded$0$android-hardware-biometrics-BiometricPrompt$1(I)V
    .registers 4

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;I)V

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method synthetic lambda$onDialogDismissed$4$android-hardware-biometrics-BiometricPrompt$1()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method synthetic lambda$onError$2$android-hardware-biometrics-BiometricPrompt$1(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onSystemEvent$5$android-hardware-biometrics-BiometricPrompt$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onSystemEvent(I)V

    return-void
.end method

.method public onAcquired(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationSucceeded(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDialogDismissed(I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method public onError(III)V
    .registers 8

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_a0

    goto :goto_1a

    :sswitch_5
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :sswitch_10
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_90

    sparse-switch p2, :sswitch_data_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error, modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :sswitch_59
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :sswitch_67
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :sswitch_75
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :sswitch_83
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_90
    :goto_90
    move-object v1, v0

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_a0
    .sparse-switch
        0x2 -> :sswitch_10
        0x8 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_aa
    .sparse-switch
        0x5 -> :sswitch_83
        0xa -> :sswitch_75
        0xc -> :sswitch_67
        0xe -> :sswitch_59
    .end sparse-switch
.end method

.method public onSystemEvent(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
