# classes3.dex

.class public final synthetic Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ICurrentThreadId;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method
