# classes3.dex

.class public final synthetic Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iput p2, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/ims/RcsUceAdapter$2;->lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V

    return-void
.end method
