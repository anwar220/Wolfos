# classes3.dex

.class Landroid/service/translation/TranslationService$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/translation/TranslationService;->handleOnTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/Set<",
        "Landroid/view/translation/TranslationCapability;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/translation/TranslationService;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic val$sourceFormat:I

.field final synthetic val$targetFormat:I


# direct methods
.method constructor <init>(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V
    .registers 5

    iput-object p1, p0, Landroid/service/translation/TranslationService$4;->this$0:Landroid/service/translation/TranslationService;

    iput p2, p0, Landroid/service/translation/TranslationService$4;->val$sourceFormat:I

    iput p3, p0, Landroid/service/translation/TranslationService$4;->val$targetFormat:I

    iput-object p4, p0, Landroid/service/translation/TranslationService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Landroid/service/translation/TranslationService$4;->accept(Ljava/util/Set;)V

    return-void
.end method

.method public accept(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/translation/TranslationService$4;->this$0:Landroid/service/translation/TranslationService;

    iget v1, p0, Landroid/service/translation/TranslationService$4;->val$sourceFormat:I

    iget v2, p0, Landroid/service/translation/TranslationService$4;->val$targetFormat:I

    invoke-static {v0, v1, v2, p1}, Landroid/service/translation/TranslationService;->-$$Nest$misValidCapabilities(Landroid/service/translation/TranslationService;IILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/translation/TranslationCapability;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/translation/TranslationCapability;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string/jumbo v2, "translation_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/service/translation/TranslationService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid capabilities and format compatibility"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
