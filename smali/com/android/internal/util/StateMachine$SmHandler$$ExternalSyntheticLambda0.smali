# classes4.dex

.class public final synthetic Lcom/android/internal/util/StateMachine$SmHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    check-cast p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->lambda$removeState$0(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)Z

    move-result p1

    return p1
.end method
