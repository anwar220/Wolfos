# classes3.dex

.class public final synthetic Landroid/view/View$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/View$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/View$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    check-cast p1, Landroid/view/translation/ViewTranslationRequest;

    invoke-static {v0, p1}, Landroid/view/View;->lambda$dispatchCreateViewTranslationRequest$5(Ljava/util/List;Landroid/view/translation/ViewTranslationRequest;)V

    return-void
.end method
