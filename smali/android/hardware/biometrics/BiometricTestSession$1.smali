# classes.dex

.class Landroid/hardware/biometrics/BiometricTestSession$1;
.super Landroid/hardware/biometrics/ITestSessionCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricTestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/biometrics/BiometricTestSession;


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricTestSession;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleanupFinished(I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupFinished, sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmSensorId(Landroid/hardware/biometrics/BiometricTestSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remaining users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_6b
    return-void
.end method

.method public onCleanupStarted(I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupStarted, sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession$1;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmSensorId(Landroid/hardware/biometrics/BiometricTestSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
