# classes3.dex

.class public final synthetic Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->lambda$performDirectAction$9(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
