# classes3.dex

.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;->f$0:Landroid/service/voice/VoiceInteractionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;->f$0:Landroid/service/voice/VoiceInteractionService;

    check-cast p1, Landroid/service/voice/AbstractHotwordDetector;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionService;->lambda$createAlwaysOnHotwordDetectorInternal$1$android-service-voice-VoiceInteractionService(Landroid/service/voice/AbstractHotwordDetector;)V

    return-void
.end method
