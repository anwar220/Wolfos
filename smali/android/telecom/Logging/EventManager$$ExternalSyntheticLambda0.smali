# classes3.dex

.class public final synthetic Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Landroid/telecom/Logging/EventManager;->lambda$dumpEventsTimeline$0(Landroid/util/Pair;)J

    move-result-wide v0

    return-wide v0
.end method
