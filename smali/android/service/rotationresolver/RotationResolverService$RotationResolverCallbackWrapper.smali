# classes3.dex

.class public final Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/rotationresolver/RotationResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotationResolverCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

.field private final mExpirationTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Landroid/service/rotationresolver/RotationResolverService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)Landroid/service/rotationresolver/IRotationResolverCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpirationTime(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)J
    .registers 3

    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mExpirationTime:J

    return-wide v0
.end method

.method private constructor <init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    iput-object p2, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mService:Landroid/service/rotationresolver/RotationResolverService;

    invoke-static {p2}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/rotationresolver/RotationResolverService;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    iput-wide p3, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mExpirationTime:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;JLandroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;-><init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;J)V

    return-void
.end method

.method static synthetic lambda$onFailure$1(Ljava/lang/Object;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/rotationresolver/RotationResolverService;

    invoke-static {v0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$msendFailureResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Ljava/lang/Object;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/rotationresolver/RotationResolverService;

    invoke-static {v0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$msendRotationResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 7

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mService:Landroid/service/rotationresolver/RotationResolverService;

    iget-object v3, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(I)V
    .registers 7

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mService:Landroid/service/rotationresolver/RotationResolverService;

    iget-object v3, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
