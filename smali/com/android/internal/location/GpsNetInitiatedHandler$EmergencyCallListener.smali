# classes4.dex

.class Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 5

    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallStateChanged(): state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-nez p1, :cond_38

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    :cond_38
    return-void
.end method

.method public onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOutgoingEmergencyCall(): inEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method
