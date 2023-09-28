# classes.dex

.class public Landroid/app/VoiceInteractor$Prompt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prompt"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/VoiceInteractor$Prompt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVisualPrompt:Ljava/lang/CharSequence;

.field private final mVoicePrompts:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/VoiceInteractor$Prompt$1;

    invoke-direct {v0}, Landroid/app/VoiceInteractor$Prompt$1;-><init>()V

    sput-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_21

    array-length v0, p1

    if-eqz v0, :cond_18

    if-eqz p2, :cond_f

    iput-object p1, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    return-void

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "visualPrompt must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "voicePrompts must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "voicePrompts must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public countVoicePrompts()I
    .registers 2

    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVisualPrompt()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVoicePromptAt(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_2a

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_2a
    iget-object v1, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_38

    const-string v1, " visual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_38
    iget-object v1, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_58

    const-string v1, ", voice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_42
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_58

    if-lez v1, :cond_4e

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_58
    :goto_58
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
