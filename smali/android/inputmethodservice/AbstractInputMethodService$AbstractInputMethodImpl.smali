# classes2.dex

.class public abstract Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inputmethod/InputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputMethod$SessionCallback;->sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V

    return-void
.end method

.method public revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->revokeSelf()V

    return-void
.end method

.method public setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
    .registers 4

    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->setEnabled(Z)V

    return-void
.end method