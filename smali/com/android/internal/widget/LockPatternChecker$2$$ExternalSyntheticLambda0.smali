# classes4.dex

.class public final synthetic Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    return-void
.end method


# virtual methods
.method public final onEarlyMatched()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onEarlyMatched()V

    return-void
.end method
