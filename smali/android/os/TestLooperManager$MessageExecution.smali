# classes3.dex

.class Landroid/os/TestLooperManager$MessageExecution;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageExecution"
.end annotation


# instance fields
.field private m:Landroid/os/Message;

.field private response:Ljava/lang/Throwable;


# direct methods
.method static bridge synthetic -$$Nest$fgetm(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresponse(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputm(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresponse(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager$MessageExecution-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/TestLooperManager$MessageExecution;-><init>()V

    return-void
.end method
