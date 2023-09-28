# classes3.dex

.class Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkScanInfo"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRequest:Landroid/telephony/NetworkScanRequest;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method constructor <init>(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    iput-object p2, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method
