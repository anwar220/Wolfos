# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsService$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsService$2;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;->f$0:Landroid/telephony/ims/ImsService$2;

    iput p2, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;->f$0:Landroid/telephony/ims/ImsService$2;

    iget v1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;->f$1:I

    iget v2, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsService$2;->lambda$disableIms$13$android-telephony-ims-ImsService$2(II)V

    return-void
.end method