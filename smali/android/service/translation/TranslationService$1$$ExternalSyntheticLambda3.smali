# classes3.dex

.class public final synthetic Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/service/translation/TranslationService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Landroid/os/ResultReceiver;

    invoke-static {p1, p2, p3, p4}, Landroid/service/translation/TranslationService$1;->lambda$onTranslationCapabilitiesRequest$2(Ljava/lang/Object;IILandroid/os/ResultReceiver;)V

    return-void
.end method
