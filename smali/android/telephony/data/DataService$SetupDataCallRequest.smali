# classes3.dex

.class final Landroid/telephony/data/DataService$SetupDataCallRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetupDataCallRequest"
.end annotation


# instance fields
.field public final accessNetworkType:I

.field public final allowRoaming:Z

.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final dataProfile:Landroid/telephony/data/DataProfile;

.field public final isRoaming:Z

.field public final linkProperties:Landroid/net/LinkProperties;

.field public final matchAllRuleAllowed:Z

.field public final pduSessionId:I

.field public final reason:I

.field public final sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field public final trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;


# direct methods
.method constructor <init>(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iput-object p2, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iput-boolean p3, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iput-boolean p4, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iput-object p6, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iput p5, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iput p7, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    iput-object p8, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iput-object p9, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iput-boolean p10, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    iput-object p11, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method
