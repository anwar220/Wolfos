# classes2.dex

.class final Landroid/view/contentcapture/ContentCaptureManager$Dumper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Dumper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/contentcapture/ContentCaptureManager;


# direct methods
.method private constructor <init>(Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager$Dumper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ContentCaptureManager"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v2}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_24
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isContentCaptureEnabled(): "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Debug: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " Verbose: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Context: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "User: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Service: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Flags: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Options: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v3, v3, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v3, p1}, Landroid/content/ContentCaptureOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v3

    if-eqz v3, :cond_d3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Main session:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v4}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_db

    :cond_d3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "No sessions"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_db
    monitor-exit v2

    return-void

    :catchall_dd
    move-exception v3

    monitor-exit v2
    :try_end_df
    .catchall {:try_start_24 .. :try_end_df} :catchall_dd

    throw v3
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    const-string v0, "ContentCaptureManager"

    return-object v0
.end method
