# classes4.dex

.class public final synthetic Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-static {p1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->lambda$getStatus$3(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result p1

    return p1
.end method
