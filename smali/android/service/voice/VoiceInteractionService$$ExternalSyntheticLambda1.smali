# classes3.dex

.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$0:Landroid/service/voice/VoiceInteractionService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$0:Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionService;->lambda$new$0$android-service-voice-VoiceInteractionService()V

    return-void
.end method
