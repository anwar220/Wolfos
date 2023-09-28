# classes3.dex

.class public abstract Landroid/service/displayhash/DisplayHashingService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;
    }
.end annotation


# static fields
.field public static final EXTRA_INTERVAL_BETWEEN_REQUESTS:Ljava/lang/String; = "android.service.displayhash.extra.INTERVAL_BETWEEN_REQUESTS"

.field public static final EXTRA_VERIFIED_DISPLAY_HASH:Ljava/lang/String; = "android.service.displayhash.extra.VERIFIED_DISPLAY_HASH"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.displayhash.DisplayHashingService"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWrapper:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/displayhash/DisplayHashingService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/displayhash/DisplayHashingService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDisplayHashAlgorithms(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/displayhash/DisplayHashingService;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDurationBetweenRequestsMillis(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/displayhash/DisplayHashingService;->getDurationBetweenRequestsMillis(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverifyDisplayHash(Landroid/service/displayhash/DisplayHashingService;[BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/displayhash/DisplayHashingService;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V
    .registers 8

    invoke-virtual {p0}, Landroid/service/displayhash/DisplayHashingService;->onGetDisplayHashAlgorithms()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_11

    :cond_2d
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private getDurationBetweenRequestsMillis(Landroid/os/RemoteCallback;)V
    .registers 5

    invoke-virtual {p0}, Landroid/service/displayhash/DisplayHashingService;->onGetIntervalBetweenRequestsMillis()I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.service.displayhash.extra.INTERVAL_BETWEEN_REQUESTS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Landroid/service/displayhash/DisplayHashingService;->onVerifyDisplayHash([BLandroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.service.displayhash.extra.VERIFIED_DISPLAY_HASH"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/displayhash/DisplayHashingService;->mWrapper:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;-><init>(Landroid/service/displayhash/DisplayHashingService;Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/displayhash/DisplayHashingService;->mWrapper:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/displayhash/DisplayHashingService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract onGenerateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/displayhash/DisplayHashResultCallback;)V
.end method

.method public abstract onGetDisplayHashAlgorithms()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/service/displayhash/DisplayHashParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onGetIntervalBetweenRequestsMillis()I
.end method

.method public abstract onVerifyDisplayHash([BLandroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
.end method
