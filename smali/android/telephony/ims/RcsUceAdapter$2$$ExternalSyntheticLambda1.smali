# classes3.dex

.class public final synthetic Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    invoke-static {v0}, Landroid/telephony/ims/RcsUceAdapter$2;->lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    return-void
.end method
