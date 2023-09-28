# classes.dex

.class final Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BassclientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;->this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "BassService connected"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;->this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 5

    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "BassService disconnected"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;->this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method
