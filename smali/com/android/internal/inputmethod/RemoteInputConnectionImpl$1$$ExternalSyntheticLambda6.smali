# classes4.dex

.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B

    move-result-object p1

    return-object p1
.end method
