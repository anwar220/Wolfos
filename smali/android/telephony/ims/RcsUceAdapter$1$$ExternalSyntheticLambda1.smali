# classes3.dex

.class public final synthetic Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->lambda$onCapabilitiesReceived$0(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V

    return-void
.end method
