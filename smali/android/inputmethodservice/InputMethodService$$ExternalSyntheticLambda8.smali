# classes2.dex

.class public final synthetic Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;->f$0:Landroid/inputmethodservice/InputMethodService;

    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)Z

    return-void
.end method