# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/telephony/ims/ImsService$2;->lambda$executeMethodAsync$14(Ljava/lang/Runnable;)V

    return-void
.end method
