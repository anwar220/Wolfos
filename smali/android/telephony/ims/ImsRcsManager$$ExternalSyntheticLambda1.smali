# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0}, Landroid/telephony/ims/ImsRcsManager;->lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V

    return-void
.end method
