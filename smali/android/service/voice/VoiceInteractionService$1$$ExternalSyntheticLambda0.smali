# classes3.dex

.class public final synthetic Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/service/voice/VoiceInteractionService;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lcom/android/internal/app/IVoiceActionCheckCallback;

    invoke-static {p1, p2, p3}, Landroid/service/voice/VoiceInteractionService$1;->lambda$getActiveServiceSupportedActions$2(Ljava/lang/Object;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method
