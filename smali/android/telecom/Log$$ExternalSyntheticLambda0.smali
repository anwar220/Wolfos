# classes3.dex

.class public final synthetic Landroid/telecom/Log$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSessionId()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
