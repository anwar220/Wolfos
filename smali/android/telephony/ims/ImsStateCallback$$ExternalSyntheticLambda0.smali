# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsStateCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsStateCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsStateCallback$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsStateCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStateCallback;->lambda$binderDied$0$android-telephony-ims-ImsStateCallback()V

    return-void
.end method
