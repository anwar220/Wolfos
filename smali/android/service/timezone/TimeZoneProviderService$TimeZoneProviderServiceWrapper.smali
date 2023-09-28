# classes3.dex

.class Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;
.super Landroid/service/timezone/ITimeZoneProvider$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneProviderServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/timezone/TimeZoneProviderService;


# direct methods
.method private constructor <init>(Landroid/service/timezone/TimeZoneProviderService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-direct {p0}, Landroid/service/timezone/ITimeZoneProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;-><init>(Landroid/service/timezone/TimeZoneProviderService;)V

    return-void
.end method

.method static synthetic lambda$stopUpdates$1(Landroid/service/timezone/TimeZoneProviderService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$monStopUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$startUpdates$0$android-service-timezone-TimeZoneProviderService$TimeZoneProviderServiceWrapper(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 12

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$monStartUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void
.end method

.method public startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 15

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-static {v0}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopUpdates()V
    .registers 4

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-static {v0}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    new-instance v2, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/timezone/TimeZoneProviderService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
