# classes3.dex

.class public final synthetic Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

.field public final synthetic f$1:Landroid/service/voice/VisibleActivityInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;->f$0:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;->f$1:Landroid/service/voice/VisibleActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;->f$0:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;->f$1:Landroid/service/voice/VisibleActivityInfo;

    invoke-static {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->lambda$informVisibleActivityChanged$1(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    return-void
.end method
