# classes3.dex

.class public final synthetic Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telecom/Logging/EventManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Logging/EventManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Logging/EventManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Logging/EventManager;

    check-cast p1, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v0, p1}, Landroid/telecom/Logging/EventManager;->lambda$changeEventCacheSize$1$android-telecom-Logging-EventManager(Landroid/telecom/Logging/EventManager$EventRecord;)V

    return-void
.end method
