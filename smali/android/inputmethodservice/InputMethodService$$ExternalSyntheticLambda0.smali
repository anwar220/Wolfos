# classes2.dex

.class public final synthetic Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->lambda$scheduleImeSurfaceRemoval$2$android-inputmethodservice-InputMethodService()V

    return-void
.end method
