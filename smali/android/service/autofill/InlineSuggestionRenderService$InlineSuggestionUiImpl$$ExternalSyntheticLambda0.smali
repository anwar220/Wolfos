# classes3.dex

.class public final synthetic Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl$$ExternalSyntheticLambda0;->f$0:Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl$$ExternalSyntheticLambda0;->f$0:Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->lambda$releaseSurfaceControlViewHost$0$android-service-autofill-InlineSuggestionRenderService$InlineSuggestionUiImpl()V

    return-void
.end method
