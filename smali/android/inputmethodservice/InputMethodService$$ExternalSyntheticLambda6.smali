# classes2.dex

.class public final synthetic Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;->f$0:Landroid/inputmethodservice/InputMethodService;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onCreateInlineSuggestionsRequest(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest;

    move-result-object p1

    return-object p1
.end method
