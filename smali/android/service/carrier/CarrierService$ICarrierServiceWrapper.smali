# classes3.dex

.class public Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
.super Landroid/service/carrier/ICarrierService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICarrierServiceWrapper"
.end annotation


# static fields
.field public static final KEY_CONFIG_BUNDLE:Ljava/lang/String; = "config_bundle"

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_OK:I


# instance fields
.field final synthetic this$0:Landroid/service/carrier/CarrierService;


# direct methods
.method public constructor <init>(Landroid/service/carrier/CarrierService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/carrier/CarrierService;->access$000(Landroid/service/carrier/CarrierService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCarrierConfig(ILandroid/service/carrier/CarrierIdentifier;Landroid/os/ResultReceiver;)V
    .registers 10

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    aget v2, v1, v3

    move v0, v2

    :cond_f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "config_bundle"

    iget-object v5, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-virtual {v5, v0, p2}, Landroid/service/carrier/CarrierService;->onLoadConfig(ILandroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p3, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_45

    :catch_23
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in onLoadConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_45
    return-void
.end method
