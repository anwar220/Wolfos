# classes2.dex

.class Landroid/inputmethodservice/AbstractInputMethodService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/InputMethodServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/AbstractInputMethodService;->createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$1;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$1;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$1;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    return-object v0
.end method
