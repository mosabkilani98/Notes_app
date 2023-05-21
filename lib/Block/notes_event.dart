abstract class NotesEvent {
  const NotesEvent();
}

class AddNoteEvent extends NotesEvent {}

class DeleteNoteEvent extends NotesEvent {}

class EditNoteEvent extends NotesEvent {}
